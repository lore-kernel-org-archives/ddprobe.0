Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B09624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658801212;
	h=To:Subject:From:Message-Id:Date;
	bh=M5BaQaTi+EUekFkJ+ILByC2rLHhSDegwg62MzD9Tjsw=;
	b=BOD+7ipk03XZRraqQV2zQW3CndpmGk+z3hP/FrODHpPYUOgCi7hxeAJCpjMvErSS
	P6KdeIv/RnBIKgOQEYAe7+wn+XFefK463Op6kFIM0hqMtuEbqKxI2kfh0qxoXK2B6vi
	QbDC9MnLk21qlibGfMAFFX0AJ3vpbPszcX59iW6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658801212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M5BaQaTi+EUekFkJ+ILByC2rLHhSDegwg62MzD9Tjsw=;
	b=fed+p79MdGH1oE2vsGVJO07xeDStfravAd177HAMmUvdu+dvpVzGwhYpSeorUAOx
	HHBJAZrCzEokcIQhKGU2GXZmF6jxMkytiLwRd8mlyYtKwm6jp+OQHVPSJ4AJlnfoAhY
	ZkVMWXSrt7uDh7ysyKwg4HYZduQtAtyFyYuE+fzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823841cb8c-fff4efc2-ee71-4fed-bba0-e9b55167bf31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fcbbb047cf55fa3652a717d26544805d9d625a3da4d79772ae00eddb6f8e514
Date: Tue, 26 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658801212
