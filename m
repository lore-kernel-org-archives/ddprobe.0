Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047562F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657014412;
	h=To:Subject:From:Message-Id:Date;
	bh=nHQcbDWutPiHB0wLLv14+hhvi6R+ef74d6/FJBPdpM8=;
	b=dVRAHnQdAF7kB7GfAt3pVnDjrrjNHdW1RvT302ivYy0Atdl0S/ABtV66+dAAMTH2
	GsWspYUHV38Qo+0KKltJkY1g4y4RCABF0H3yrTTkIDTBokMBz3bXxPP738GvW34fbyK
	ApQ/hGO0SUQCS3R6b0rYU1oysjR2sYCq3GhqcoG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657014412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nHQcbDWutPiHB0wLLv14+hhvi6R+ef74d6/FJBPdpM8=;
	b=Q1/62IydTNJcCaH7dwXruFIO3gcU5B82mk4qGNKSULZrg7WRNtMLxMCE6utHsrXf
	YCYkfvPJOWwSwsS8WgfpvQgs1RWB4xE8JdWig286RTvsjpidb8idennWtMzxsD0Tcw6
	UhcPX5AQ9P457TvBhRkTKSND/YInpbyxM7wCbFy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cdc163d4-2ec09a4d-e2b5-47ab-80e1-7869d80e6afe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1688a0fc9fe1e053ec939c98b60fa5ae553bd905b366d88d3034fa8e79fb0c8d
Date: Tue, 5 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657014412
