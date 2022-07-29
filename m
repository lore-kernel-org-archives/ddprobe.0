Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1861113
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659112852;
	h=To:Subject:From:Message-Id:Date;
	bh=Wz1lEVU80YJOYvSzWTKH9m5UgyR+bBuETbiqzfqOHaQ=;
	b=JriWNoEoD9SkUSNL82+tka95TYlb+Xu0ZozNqe8I4x7I3+HJsaYASz2YgGMrllPK
	Si/cy6UGk6QKapKzOgDx5jTNHb/iBreXRJjeryodwB3eGv3cx/4iuWnHXTsEEorNMtC
	GgGVwJt8KpDQYn56iaKalROST6JKsbME5XFHYb/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659112852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wz1lEVU80YJOYvSzWTKH9m5UgyR+bBuETbiqzfqOHaQ=;
	b=TALZIC/dZjrU1x7eaYHPJPaU89jtBEkRc8rvTnaKv8py7oriZM5pI5bEQSVw85sI
	liNhoRH4cnOzthGb3unoVP9GVcz8t/BaiJiubl5FF4UsRMYpwk3sq1xbxA/98PvCIw+
	2NPcALP+GyCvyUvy69nhci1nkUffxCjmw4fFMZMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ad50c71-100defd9-b32f-4273-926b-b675e1ac271b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dbd1bdffe2a13391a3e7380c3033064ca29f14d93ce2d0923b9b0764cd2a87f
Date: Fri, 29 Jul 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659112852
