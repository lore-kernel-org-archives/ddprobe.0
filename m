Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAA010E0
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658930452;
	h=To:Subject:From:Message-Id:Date;
	bh=gOwqWc1B+3XSbIu/RvsRZJbh+BQkUs6urHlC23GWlPY=;
	b=Li8g09xK+ZNzuzR2kUrKKFu+LVRjkp22zILCA0fLkaJogOxf+p3T4oP9Q3A8tXdK
	aoGqKMbBdqv9vpPvh3qCULm/dScZQV8Dcen4fdVv7EucxX8OO52iVm4GzFB6k8h/50C
	RZ00ztolZt2DQXtUP9dJHX0jI/oNHXkLPWQZa66I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658930452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gOwqWc1B+3XSbIu/RvsRZJbh+BQkUs6urHlC23GWlPY=;
	b=Y7zdGUQVHNysaVI7tAegcwuU81wRtqo+SLPQW+w3v8Qwj7znvLjQ82WgGaiKn4hv
	pw7xj6zv298NvFURDkSAwfrCxz1+q7KZy11gH0efN6NDJsHJym78Eprptr83oSSiB6Q
	b5CHCFfyQrilT0Elzb1flC5oDyXmGvArGlElN2pY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ff5d87e-f8d2c76b-b010-4a20-907c-34eeb4478d01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 801e826fd323bb6fb37a85305205f59bc7dbd16eba7e387288e614bfe6315f3a
Date: Wed, 27 Jul 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658930452
