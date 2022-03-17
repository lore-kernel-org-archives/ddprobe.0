Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747194A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647545485;
	h=To:Subject:From:Message-Id:Date;
	bh=uRAOqOvgqtiuyvKKKUVfEObgEc9KONLHdXO+rQbeTtU=;
	b=ii6QAZ+87he+YMUuh+edDaUuryAKncC6mOYOD5KFrNa5SnYw8NjZbc2v+Vtsx9fn
	pwOwIEdsf5noXM+lvpZYIjmGMzdNj5TVRC2ztXnC+qiNuibiHLVh6u6O7l0598Ke76z
	pXb6DHpbDZVUvF5BsVAx8RZE2uYUlealxlg4Aamc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647545485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uRAOqOvgqtiuyvKKKUVfEObgEc9KONLHdXO+rQbeTtU=;
	b=O4zx3S8mksRNfc/xa8IT1V2JbnfDG/5oEa4CHyE/x7NlKGWH5/skeW8ZUVffccT4
	TFgBmArbf2Ld7TT6Jqmj+HnJ5yNIzy+msc/z4JZsDdgcwxDUCQrMIeC+I2lQQ17ncyK
	WbjAPxB8cq/mendtnzz3NWoHhPacSZlFjpwQ5pXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f995d061f-60f71c85-f869-44cb-8387-d33b31bbb8f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1758aaf3d1200581538e9cab53cb9189fe5280e658383137438d93920c5d5632
Date: Thu, 17 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647545484
