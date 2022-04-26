Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458FD7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650979078;
	h=To:Subject:From:Message-Id:Date;
	bh=SEBMx6wk5T4B+f/+NpQ9Bt4OLdoc+7kb0cfABR9ClEc=;
	b=BWg4iIKjIEwc/2zwWnVDU7EAepkjDvFjoozw2Rd85Oc4LdYDVdJ+YyADnq9HJyJB
	qQtVCeL/Ma5QzH45vmqZTEN3Gy34hYgVy8qVB1tzEeNcm0JiFoA+rY9JB66Y3z+FN34
	KKvJJqw/itKZufHusvwLRbwAzepqveh86+wXTsFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650979078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SEBMx6wk5T4B+f/+NpQ9Bt4OLdoc+7kb0cfABR9ClEc=;
	b=QJ2iTkSv92Sif2MucP9P8k5bVjfkfCyZqE02HQItApnurWXvK7LnQrn0dt3MvWe3
	MxjCObWBlGOGOJE3PKFS1WeirHlRxFVeXihWEOeucuiVah5MiWob9Nk2FsBvdhsJAOu
	SO3+L2uaI6MBjl4V/cG2HIvEX7ItkIr1R7ZhJOL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806605809d-f25e60b8-c2a9-4f5d-b858-842d70c0ad76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6401ddbaa27e3ad5f8ee0997d558a765386a4663e7a3e5e7ab987062c88a8b6
Date: Tue, 26 Apr 2022 13:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650979078
