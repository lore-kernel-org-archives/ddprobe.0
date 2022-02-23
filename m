Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F779818
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645627885;
	h=To:Subject:From:Message-Id:Date;
	bh=D2rtcQYgnwkUbgjlynkk5LHCRmEtg6ushlkyP1mcvk0=;
	b=NCmoPV2mJnDvbRM0ikUPMX5tjxUuDbgT9Fk67E3sCZqpG5KF7RkBjjdVR1ZlDW/T
	UbTXdcTDSRXZApmfTYk0Pp3jwDXiaV7NMMwsbxBY8HzUlMdHyUkmkdGt0JYmACq4L0n
	Vq/2yGRAnCT589bizlK7ggDzYggkVgXy/dK2sk2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645627885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D2rtcQYgnwkUbgjlynkk5LHCRmEtg6ushlkyP1mcvk0=;
	b=igyaT8k13UTHAShe3ki6gNPp/7IctKZHgIYsQ+70GtfYsJ2hFe2sY22E/UVazUnY
	9wQT8FDMD/WtqsdKIP4cE2/SOmtwOxDrejT07SCwinogecUbY05eAX6NMuuRtqDSh7c
	tWMov9RnxxnMNkthWrrIMxKAUXSiaQDzslLT6UdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2710c540-7cff8b67-022a-46f9-bdeb-c80071b8e219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca1e058bed98d0cebf68f94b7e09abfdc591a1f4dbeefe920aae38c4dae4a77
Date: Wed, 23 Feb 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645627884
