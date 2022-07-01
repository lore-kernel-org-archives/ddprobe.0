Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1075E10F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656665812;
	h=To:Subject:From:Message-Id:Date;
	bh=siyJ22G1eATIjndiEHVaX1YAmEoZXuUor+OI79OlPeA=;
	b=YScbKT6vFFaEf+a3Y6Ox/GbRm5h9csWIyIhavkoX8o3nSxenZ3PgjmQKWU45I18C
	hCCQhY3t3Dn5lK7ntk+Y5EWWnHTxer2I+8pWmf/6CYJoJIcPaMkzJBL+SBqqitQRG6a
	pY37jGk8sZZjLSqTI+F3/d2NW8V1gD8CBwYVeQjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656665812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=siyJ22G1eATIjndiEHVaX1YAmEoZXuUor+OI79OlPeA=;
	b=WN7xCRLcqefBrB1MnUPfa/dSUPV0/Jfhm+gA9/AhsrPiOJaQur46hM2U8VUK2uAd
	lXD4mVmABaFLl9bplDkfQAwqKoZcuv1cH2K8RTwntrsAKIiCM7vqno7fQGq/1es+ite
	0nr0ksF+VCnNS8TYADlqPs2bxyG3qVQtadnGerTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8fa2d4b-d07927c5-ae34-4db7-acac-179cdc26a202-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb3a8f8e63925be8a9c165d148a1e249314f5f00b9d50c49f8fd7f9f97285118
Date: Fri, 1 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656665812
