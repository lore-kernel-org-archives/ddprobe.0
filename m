Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A13FDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 20:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655326319;
	h=To:Subject:From:Message-Id:Date;
	bh=NUImqhs5VUEU5IZLF5PE/ZLIauQuUJLkgQACjfpecZw=;
	b=Vgtzn0QMmhMq2YUKSnNlLClE6kVIKd/PtGuUb0RO7S+j7OEl5BZ/g4TB1YRtApyB
	SGdgdlyECNxzDdzEDbZ0AJrR46dKfNbeJGdvElFcLVYDS9fcfGGHfZ6m+DUTXj3htra
	7dtH/G6h2XtpptwwzgaSQM4rPRUjvvq2s66jps9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655326319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NUImqhs5VUEU5IZLF5PE/ZLIauQuUJLkgQACjfpecZw=;
	b=NBcMNGVAqNO72+7bI1qPDsn82wEyNKCztTaCzia0Km4d1HiNluf+9idalq388xjk
	5xbyWpXYWyDuiYPVesoZTHHVPJtN/RBhK8mewprw4VSqIqroMKNsPv6YsrAyIa73Plk
	zkNbkIsESILMeuOGBG4l0hhv+1WZnZWqwZtInp44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181692322aa-75495d7b-2845-4ff2-9053-bf673a2ca789-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 906938d10bdd34bb379e06fcd7def1e0e4fd597dcd43f1c7777d2b4f19edc878
Date: Wed, 15 Jun 2022 20:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655326319
