Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598DF639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660362052;
	h=To:Subject:From:Message-Id:Date;
	bh=vixibKWceJ1N3uVZcYFJ7Qj96ieO586NnVUaScRRSn4=;
	b=NmxbjeoEwaNq9ZxuM2lyUq4Jb2zs1OShBN1ZR67v2Kpd/Emk9+yTKUoEfI1oZrAh
	bH4gvbPbUkgmh1K/ylM+chcKNcYcRCj21vjaAt823WUePRlb1Z/InDFeucuhWCTklRZ
	uRffAHSHyqqM59eIYCH3rzJxvyCYTK70pev/dX7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660362052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vixibKWceJ1N3uVZcYFJ7Qj96ieO586NnVUaScRRSn4=;
	b=FMqcmW9shNVqt6ZW6eo0/ShDQ5HTpfQ6oWqSvSQk/qRVwxHjbMn8sU36++dycaFF
	XFsEyEbuNSPd3wseXD1wDGqRlXRkcbGo/ioGKUwAV5OWo5JaorNCnCuekl3ub9XK5i2
	zwXeTw4oE/54voYNDIeipUCOiaTUkR4IZmAfHJck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182954a53ea-8b293d51-fbd6-428c-a653-e7b9153fc81d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8fdc5941ae639d5cbf36ee05a487d4cef68b2f7f9846d6f6e3c5c1866386ffd
Date: Sat, 13 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660362052
