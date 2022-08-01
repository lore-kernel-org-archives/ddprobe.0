Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C19C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659375652;
	h=To:Subject:From:Message-Id:Date;
	bh=nKtiV+ZNdw9x4EnI9dil2BhMSWAneL3de4r1Mxhli8Y=;
	b=ilYPquaYa+phabFbKVgZMUGzDOUwR26SuqqAbSic7l/XLAE3Yjs9oUHbrMzl3GjY
	DTcfdqFzy9X0abb616Y00HoWjn8hX0thy0X4pSuLWK/D8kRw9J2FuTcYT9SrJBLxEGK
	2tOCOj87M64q69EVAUMKn9YIOV1AFZO/w4jaIDFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659375652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nKtiV+ZNdw9x4EnI9dil2BhMSWAneL3de4r1Mxhli8Y=;
	b=CvALtiyv7OGmfTNqgJLN3+tdL1fnok06nih4G4WTo0mZxK6k6PSV0EdJCdvY1WEF
	/POGjZb+IF0IgGJEU8mccCxj10h8sY9Dyjc+0A+mBUKx7PT8otcAHSz+mfZFXaOftFT
	BQpnVTcuoZqBVoMlw3JaiUWGHDk+pzxd0XoRiAGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a7f0eee-73f85012-b0c9-43a2-aa95-969e6d67b662-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dadaac05a6fc17a2f89f5f9de7c4a822655903cbad8de26bda821c8cc7e4c0d6
Date: Mon, 1 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659375652
