Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5932C7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659426052;
	h=To:Subject:From:Message-Id:Date;
	bh=nkdFlcSgB+XTK+ebYdr5ZtAfuGJEO7pLRNrj3XmZBow=;
	b=OegNal1qv2NvTfLuqa0PNbY0baCcfaffQzF5O/X7oju+aPhWz4jHd0KCQOtt0ZDv
	Tv9ES+7Bjx4GBoiR8Xt0VESRXhnRPNopKqQon5/VtOwGjM5KxShg9XvXeJGEwEOT+U5
	PVy2dUQAyYbeFUStRgeC0zKE3ufpdkB3osY9+4Mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659426052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nkdFlcSgB+XTK+ebYdr5ZtAfuGJEO7pLRNrj3XmZBow=;
	b=CSA7zoJlBkV+ZfdxGnxd1pChiFsippwF3MB46pgSnd4hwyl1wEDgdt6ulNT9SVUS
	wpJm2VT+W/9AHrup+73VCduI2JLaLtreNjZnNjhhEqEVgrtxmxKGDqgKdEXuhI9n29e
	VWtE7XKjfa5RMjLCkm6mvJkMnCbtcf261TUL6m9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d8019cf-a3d230c5-0abb-4b80-b3b0-7f600f3f4758-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9434d90454ce9f51419f5fb453f2746ff170f998f3a77d254dd31a9180ba29e4
Date: Tue, 2 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659426052
