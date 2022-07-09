Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD20EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657365412;
	h=To:Subject:From:Message-Id:Date;
	bh=DN1J/zlQsxLQLBScHjOJAEn5HsKUo3jOmZRLSq/HsvE=;
	b=UPvVZaxaAuWJz9MPYkYyYnxfzOZed8bEIye02ldAyJrd4uxSKd2ubnsR7ydhYDFt
	gduq8GzhPak+aHS2UYXZ5l4+OgT62IrmE58bW+o/duUhnRzRNHlSthQrmlzsnGiohP9
	nBNjA+LOP68+m04rPYP/rtOKq4F6nZZDKiQ/6IcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657365412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DN1J/zlQsxLQLBScHjOJAEn5HsKUo3jOmZRLSq/HsvE=;
	b=daWV/ROg8fsOgEVF5WXkL5UXPLK/qR1bzbC50FA6n6Gk4F/yzUHy9tejF7aMea7W
	rToO1hxw0tHOsj+WPdZ4pn/kdfEApOZwEwaokwUmbGUbfYbLkOv9qeBrsHuLSHwWhA2
	nuqKnrkVF0elx0tnZ2+3eBKCW/Lu76ZIK/9VB6jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2ad3a4a-abf115e7-bf36-45fa-8782-13b06befe451-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd1baca0f36e33a3b289ade0bfa849573ef0cae2ab879cb99d3d587e4700d190
Date: Sat, 9 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657365412
