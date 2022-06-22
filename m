Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0079B1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 14:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655908079;
	h=To:Subject:From:Message-Id:Date;
	bh=wyVam4zKsZmna3YCUEAgpvSVtGq4NxudAYMe5jVroco=;
	b=JhArApmPidgRk70SkGCX6xS8NZw7LoUATlg8/mpyaRki5Mb3KmaBdShkD1VBDMRO
	omLUQbUBgWcVpoyseL+2I8J6JoMQNYVrg6PvfFeYIvmt7yy1BfFG3EvAVBHjajnvnK0
	V0oHD5sRIsE1XtYSclwScfeCkWGRfA8Ot+IXVJQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655908079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wyVam4zKsZmna3YCUEAgpvSVtGq4NxudAYMe5jVroco=;
	b=aIU4ivk0QtoVxBPIAWXVev+fZkyoGFZ6aotx0z17LzaG5Dx+59dwtf7L+OxcGvKE
	NVt/qETPTb9pttZU0cZuLdZSkT7l5+Pjr4ps6qAzUnYz2EGdCx2ST0WcCo1mqVr6XkQ
	Sp8jxL2mAzNiuN/yp3KsDVEIlx21dsRT5Rh91W1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818bd016bf-1b16fca0-c804-41cc-b791-1d9d8c438a7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecd5791652d1f0c2faf4ebe2968dbeb5c5c5eb02c55bd3d151f7789ad3c0722f
Date: Wed, 22 Jun 2022 14:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655908079
