Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FCF17CD
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660114852;
	h=To:Subject:From:Message-Id:Date;
	bh=UqJPyb4+tCyWqrFFK8vpbUuia5tt3bdebZelQM51W3Q=;
	b=MeZurDIPhdNVweivRpBZ7Reoox1b4kblHQczubU8r9dSDq5Yyo1kKnCsfkGA23Br
	E7p8dXR4+H0NWDxNQFbaXVLyh8Syo4Kk9T82eS3tdt7o6byK3PZrQqAqM5Z6MiQhTMR
	tIuJ6Xe0DreK/IRJ9orbRN1G/7rVJYe+JwtKzM5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660114852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UqJPyb4+tCyWqrFFK8vpbUuia5tt3bdebZelQM51W3Q=;
	b=V1u3hEZbDmmCr8knq7ZlNcK1KWgWCym6szfHp/VPrOD7k6pa8JEDbBZjmdKhTvTH
	wOCFECKiTBxhJO6h/64TnIoMmPFelKgOrhlq3xhQDIF7Wa4alrL8+96vJWJNjI33JeW
	E4mA6ucJc3qP/laoX4Y/6LLDe9HSu0Qg2lx75c8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182868e5ac3-8c5498c0-aef6-474b-8fc7-424b8a11f128-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deb7c2d3114aebd71df6017418f3191c322afcd66c0a74baa8ab34fbe48be9b7
Date: Wed, 10 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660114852
