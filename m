Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2575B33C5
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657801612;
	h=To:Subject:From:Message-Id:Date;
	bh=+f9srO2TTcpPoetkmyqoMM5c6gMgGCXesSg+D+G16yM=;
	b=LqfYCKrSN/jpKv1ACwKfWeh4AwpYYOW67xsPMxv9G2pohVr6gzr45iL5e0TtNf+K
	4Vb79ztO42G3Ox6ufh0l2niVsRo5uEY16JiDY0YYwcugNAvmckINOluVUrCrdBto9kh
	Vc39jo8gNCUEeThLK3TzHixyjwbZFttdc+eNCV30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657801612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+f9srO2TTcpPoetkmyqoMM5c6gMgGCXesSg+D+G16yM=;
	b=QrL6MW1/jNXX2Nl/ZfB53F3bjPhtA7ZV7gls5ovpsAKaOIOfRC8yKTm3hsIYdxlV
	+W59QozANTnihc8nVdciG2D+uG7QqpH9DCPJtpYlqJfttuJ0+cwVf0N1J+vsevzq84M
	ArE898PGNdOOCkfd6bX9+NslVY7PGTId2Fsf+hJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fcad1bfa-364935b2-ac3e-4afe-9d37-d264d9471d1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de52e3ff55883a7733d633062c867b40300494770e996a3de7dd44d085a09350
Date: Thu, 14 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657801612
