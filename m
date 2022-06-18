Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04A97B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 22:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655590319;
	h=To:Subject:From:Message-Id:Date;
	bh=j4HozmK7FuVsumkPKU0FYrdUx1K6yQJlomSyQAzjixk=;
	b=FtJvxP7g8ehz8WwOTza8D1s5xnkV0FbnFWeVd59K8K7uLzNKeYSt+WsdBm7Ccaka
	nhrLwShQLtwHQFw1xCm7WM55IjnsIWZWqMeoaUns1eiyjBnlSWbCHKpDKJQz6vescPd
	VXPK2Y2CtUSKK9uK3oEzE3yogbGjX32f5BqgA72s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655590319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j4HozmK7FuVsumkPKU0FYrdUx1K6yQJlomSyQAzjixk=;
	b=T7yHQH6VAvMNWAoPqHDcPQ47DFs1AVXGbmRImWW7jBHV4dpHzYmQ2IX1GfS43VRY
	E5btbxlNsfydM37CxlISJDg3QDkr0PQV0zymivz0ps6yB5plqYBrhWKfXHiqRR4ZbQr
	jz64lXBMjjjlcMyL25tB3hfrxzyG+ZMNImD1xKFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178df7488-93fb26f8-7254-46f3-9a50-0f6707823fd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8e2131f583f211007a1baa9bf581c0a4a091520190a688cc45a9546db5d60fa
Date: Sat, 18 Jun 2022 22:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655590319
