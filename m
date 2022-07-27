Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0346C7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658884253;
	h=To:Subject:From:Message-Id:Date;
	bh=1ALyp6lcmN9y8RTUPr7JRMJZWdDL65AIhvAJzqeEfwg=;
	b=CKdm9qhfbed/6X7cMDKFZv5fw9B/YrM0N5bXsQcNg40ncC7sKeQvC8kdqSL4IL83
	eqOsE4qZdVPROdxVYagIXrHcKh32CXtTkJmOi7hL+tqhtLlHknxUyCiuix2XaB13VMk
	IQExRXr/Hg38jSd/BBlIKfRubB9HZ0Vypo+StrZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658884253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ALyp6lcmN9y8RTUPr7JRMJZWdDL65AIhvAJzqeEfwg=;
	b=JX4SCvzRwX4HDtG1gbqnt5I8L5/usHrWYQxvwKMwedaEH97xpzz8gFO/TcowzWZ4
	ol6Lxx+er6FxiDVnxC2Wo50MD4A6xwjIS9mexRnjShEePSWEXDAvOcV566kLYzCb2vT
	xcQd9EZbJuHqbnhpH6eFy5fSU/z86HrNiMMAQLB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d34e3ad-02818721-0afa-431f-b335-f01ce285b170-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52d8d25bbc82ee5f51dd7abdd72e93355690e5d3d47b6dc1a8729bd58ca60e17
Date: Wed, 27 Jul 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658884252
