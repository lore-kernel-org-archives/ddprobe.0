Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7631867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660621252;
	h=To:Subject:From:Message-Id:Date;
	bh=H4nNgAs8nl45t8L02Zqeak/KvgIngGLWKHy/1EylAe4=;
	b=HPiaXWGrN4gGI93GeAcdrR8pcnRMe1U3pfJpComwUdXK3YCynRt1VRTMVWcrDb+p
	uz4xBBtCII9eJpbpdwstOAHVOeNJvnJYxQoAPhGdqzbL31yJy/D6FRHmni4VMKgr4CR
	IMkSspuPZFYP0iCBY1VNL+m3/riPrzKf3EEn9VFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660621252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H4nNgAs8nl45t8L02Zqeak/KvgIngGLWKHy/1EylAe4=;
	b=DSa/HsGRDeqiJspeFaJMUd2Nj6WeGNITFST7+MToT/ZFj0t1UJcDIxp+wAcuv+iA
	fU5RCPtU/QyDqfqSd11ZWvRrcmJoA5beGklnkfcns4Ssh981BPFxbM6534sx8I0FcqX
	RQl0ZB/zoEmx3VvF2tovqg8DmruTgFepnSX2S99U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4bd67ba-3f6e3719-664d-487f-ac2e-ea9e35da458c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 947c507aba9c4f652b73c1a02ef1e0b4b460e5a6ea66dd37a8f850d631b558f7
Date: Tue, 16 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660621252
