Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A3E4681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657647412;
	h=To:Subject:From:Message-Id:Date;
	bh=iJJWKtUoMsM3RGPnf7kMI3ON379uoP14zOJpOrhdS40=;
	b=SAS/nUKfRkbnk6idDfwlbKsFYUv/dE7kbaq6grnD/fJ3fzGHVMSKNeLqZSSAfy1N
	ljjFaRuuChUzRee0LE8D00WF+BOh5Nb2XE9oMn8Ucm4lsfcP4VnewSaEimGgF0xuFn7
	eSc8lz30pAaH7ykUYXJjLGLWGtqAY7uVu4Y+Gwz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657647412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJJWKtUoMsM3RGPnf7kMI3ON379uoP14zOJpOrhdS40=;
	b=VzWvueYll5aUsUjCpof2XsrCh71vH8ZG979mZCh7aXaq9kJ1zFc0xe1zTmh41d/b
	5lQRQ2dA4yxTPWvig3cx+QKNnP6RMFfHRjjRuC9TP8I7ruvwVYiDL+uciEM1Oeppjyp
	wdc5zZ8JTGz2BnfBxgA+YS3RA0d4yFQj55ZRqFfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f37c346f-419cccc6-843d-455d-aa32-321f60967f47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f9bf3f24e789c4424e3983cff16ad7d0745ea92f2c88f2a9a2a1a760b59333b
Date: Tue, 12 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657647412
