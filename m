Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0317EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656490012;
	h=To:Subject:From:Message-Id:Date;
	bh=xtejrdBLCLEoo4ueVyu5QQuRiB+p7usmyqcyXgIugig=;
	b=NWibbSmEdDIamN8snmuddqjJDTkg/TcbD7rTvQUMnkP0qyn6YD9gdoHik6nHkyr+
	63PAYOfgizqY5isWWV5f218kceqUoeloRzRG5GPi5yaSyB9iXELg5I8oqVD5sFsxZqO
	DFS8utc+ozhj9+1MG/j3vABKCZU/dzN8DX2j2UGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656490012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xtejrdBLCLEoo4ueVyu5QQuRiB+p7usmyqcyXgIugig=;
	b=g9IEoM+aW+nws4P/elFxr2kO5JohUKAdE/FS9dyDJcMXN6uGiCFtM+OgAjlGfDYp
	gSQqvvXFI95icd8su0VMriOKcrvDt42YyXdOB+wzhXKPsQeD01Xkv0nHyFB1GWE2zU8
	G+5WOG8+F96aevGix7b0cmBjgt7yYK7nshLUV/LE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae7fae88-da66f74d-7f3e-4373-a3c0-ef87cfb59f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0fbdab5588c33063a1c50e561a1921ffd94c7a2ebfee8af66ee34ececad2f3b
Date: Wed, 29 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656490012
