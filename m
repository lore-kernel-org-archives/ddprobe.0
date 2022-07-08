Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01833635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657252012;
	h=To:Subject:From:Message-Id:Date;
	bh=h0FYlUeFghHq8/sfGDBiJF1K/lF/gM4m7HczjMbJEqY=;
	b=BEUcZvQLPx0oPgKxFqSPLXsfibSxy6g8Ec0Xk6/xNnnxZ6rI44dZvcxBil0wWx4Z
	Xt4FWBnEQnO2KD+grxLfkyqgqrze+iirWBkwmnHoEYg06SpDD9Ohj5Ovn4wyPbQLkaU
	vdYvBZHjCxTOz+N4LO4ad9KrmZGQWMZ1AbfdMmrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657252012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h0FYlUeFghHq8/sfGDBiJF1K/lF/gM4m7HczjMbJEqY=;
	b=Clz1PEmdbRPJNnWKl69fx9NTGgmO6gyVOktMtNaYEj2jMG5WFlGg9+c9WLH8G9LJ
	XvBf9lVyHkLHyv37VFVCHBagKN/RAEYUuf9QjBeGiXXWkdp3kXAmFK8N3lLDd2/Zt71
	PDll/KgA54Z2Zw5TOODs7by/pCsq3LuKeMX0dmbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbeae0ea-c9f91a14-f085-4db3-8216-c314becea398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dda0bbbb5681ec7df043ca11faacc40405b203909b2859be9f9ca752b39eae9
Date: Fri, 8 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657252012
