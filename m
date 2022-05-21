Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1AE18E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 06:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653114779;
	h=To:Subject:From:Message-Id:Date;
	bh=etumpIr+Hm9Y0RjiEjZWuOESb/8Iuf6ofWtPxmDo/CY=;
	b=Lj7WCLKyoW/vc4WowythkpAgpyVn0pAyzMdubSkAnDrThkd/2hY0eWgoMUlsMrJx
	7uTbxxiBJsB9ef8+39KTAnCke/nBO9j+CiW3/7daf3v9gs666q8vMB/8ulkjWvD/xfQ
	kfih4HFoYw4yDdo8ZRix97MpOrLmD5H8a0bGG0Fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653114779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=etumpIr+Hm9Y0RjiEjZWuOESb/8Iuf6ofWtPxmDo/CY=;
	b=EpBuGdIChliV7/A28LKJznln9sJ5QSAWsr+sElhtOUFQSJ2ZQ04l4pZRv5+8D1nY
	7UaYjMRQboMzp8EAfc6HklFjEm97ReqVkBSDPr3zqhe2ovP4zmZlDnZMrkXM7BArHic
	JjWE8spD/CKY3SCRSovmDyyOTGLynBXUcS6Rykeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e551b67e-b19d6a7b-4c21-4ab4-9e54-e5caea47e322-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 583a53ac44da46fd31683bf8766f199241a537c540c04e50d976b6a3fffdfd35
Date: Sat, 21 May 2022 06:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653114779
