Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575813C13
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660922452;
	h=To:Subject:From:Message-Id:Date;
	bh=VUjsi3RN8+TI2lW9sEKskWgGu3Q8K6LJS5Y5FwnrjU0=;
	b=BCniQG4P/7Ozh1YSmZLUhj8e8sr0Hz1J50UnxIgzFQUgugb7WikVHXO8z3ueiCIC
	LoYG8eDBjQ7vQGXk2WmW/Kh5uBTJ+os1ezG2JuPpfoWpvg+Vs0cWkyl+O1Wvik7/lMZ
	A66JYeN1yKe8Ywr4V7uSEZWGYF+d9ICjtGGmjnt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660922452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VUjsi3RN8+TI2lW9sEKskWgGu3Q8K6LJS5Y5FwnrjU0=;
	b=MgbaT9tSBNjDj8aoPhsDQXkcCzEygY5oCqzTOE7HKWXenoz0nqNJOAazj13e29TV
	OEobM3ON5pAK9DskKudsVTCd9UA4YTV3AHZqEBTxrDYPB6MtD/xtHwmVqBUbP+HB435
	rWWbSc1TI0eH834VHj4dG4khEFmLE9amrd6zhaWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6b15a5d-4bc9883e-b46d-4968-8f50-7d6b1be4581d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be530bcfba5106d471c1c08596f361960f10895ebc3d961c358171843879cbcd
Date: Fri, 19 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660922452
