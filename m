Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4A91111
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660609853;
	h=To:Subject:From:Message-Id:Date;
	bh=0yB2DV4n/w1OOyz4hi/1rsA7lKpF1iXgKGAQn5kqcEE=;
	b=gZuReBsQl6C5H6z/YxaFKQIyU7OTgonvk0i23qMvCOTkETxF8WlVVtDkx0JIeWsO
	m8S5EsapTwkSm0bCjk+f4ABG18jEz+2oXa2TBlIKWiaZDwmamZKr51Ccg6W9DQ9/VLs
	1WjPJQJ+nj8KJ5qGLiYVT7O6CJr5quvLAYz4yy4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660609853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0yB2DV4n/w1OOyz4hi/1rsA7lKpF1iXgKGAQn5kqcEE=;
	b=h5ULcib6Qx1rLUpnWjvsTVzZk6Ebt88igS/Ce015XzFahThOqyOmyiyZ7UPkGHFf
	ZyMhFtjx7iFu/eL0R8POWR95tmQKqeK9cPDcD66sp4yb/DiLTyoM9AfueEHv2CrkH0t
	9XV4xQaBsyM3he1+cHqYOt45ZXX6BdbNyNW4L5J8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a40f7496-a81e9279-5401-45b9-8bf1-a24c092e959c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 964befdd5facc55996fe0f25c2d3a35a9b166bfa441fd6083ba09cfcc0805573
Date: Tue, 16 Aug 2022 00:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660609852
