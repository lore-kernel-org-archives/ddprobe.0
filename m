Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A271377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661089252;
	h=To:Subject:From:Message-Id:Date;
	bh=vANewHUg9cgkbk7A3fs4ZFFJBeb+NWHysHHBy+ga5tc=;
	b=V8/n+056UIgnS82MsDzUq0ouIySYwkwFo3T+MXcdD8HmsMMFZaa9dGGOZaWXSbsF
	N+LaOP5wJrwmQK2ULGISuTWxo0PWtn44g2VkBr7Zbkolk0w4eqZWCdMvARgF+V9fkQZ
	7zc0zQT6EYrz6EgAptM/NN68jmwMg7KZTv3vDd5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661089252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vANewHUg9cgkbk7A3fs4ZFFJBeb+NWHysHHBy+ga5tc=;
	b=jkb5U84j66eSoZC79/O/1ZaQgwTFgwFdcy9ktdvOIXK630JSxLaktqQEzLk3yrSa
	kBbX+Wz0lgodLdd67Hf2NxScO2K9ejAYlLLzN9h2F37M5i/Gf9ImkXuBEEubfMeZbNB
	hEN1LUzbwLpPegYi5JevbQkDW53lR1IGb7rrTSz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0a284cb-590731d7-f688-4333-a750-3a9a07ea6344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62935d76272c75d1399677f4d78fdd1396d4d3b9625d8986bbfd1100c296a234
Date: Sun, 21 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661089252
