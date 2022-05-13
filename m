Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95033D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652456459;
	h=To:Subject:From:Message-Id:Date;
	bh=rSycxetWtXlFOxTYpO6j/edi7ee8cDjg13l3G6OnE+Q=;
	b=YiwgK9NW9hIrCRCFhuQlF1W+G4t62duv8YaVW0JpK1eCfKNERYyJL8a/9WyPq4j2
	atLKzj9L8XDBNdOV4h1Jq3likGL2fRe3wA9ox5TKLMKEdSjEXg4WYjDmccmWmzeqgsN
	SrgZpJFdn260waGN+LuYiBJGGlGhScp0MiAyHcY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652456459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rSycxetWtXlFOxTYpO6j/edi7ee8cDjg13l3G6OnE+Q=;
	b=apLqAe1e5YLNE8/d3P16yh7jAD/xg6XeTsIXwGKBxzmHjJEPvI88I9gx80GlZq3o
	h62e0exw2c4LQ165WvgpzQORA3aBdcjnuL/0e8P5K6e2H8Uw+m9bFCbSpEo7B03O88A
	FOHOF9nYhgtH73dIf74ZHNS98ZRpB3K37N4j9P0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be148bd4-10007382-bd62-4f06-9a3f-39373ae85de8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69ab905b9356a402a5f148516b9ebd2904568e36866372c57784b25cac1959b7
Date: Fri, 13 May 2022 15:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652456459
