Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA7815A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656918412;
	h=To:Subject:From:Message-Id:Date;
	bh=Zea6d0a1LtkMKIHxUs6BhENb9Fxk6+UKA9t+8dYUzxA=;
	b=GaDeSbddGKUpQPtMiT537KF+xCxMo0AfWCfhAxLb3Z2TG1STMvpAYyqnKIZbV+gF
	Kb6iFXIWD8rYMZJFSvyhq77URZb+z5bw6fMlSFqJedcw3my/jPtSWjTLRDzRhkVgjEx
	+DmO4c2jipRpPI6VuxU1TbiZTsBfEX3JUd+vkAdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656918412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zea6d0a1LtkMKIHxUs6BhENb9Fxk6+UKA9t+8dYUzxA=;
	b=gr9bfKC8Xuj1vXCrOhDU1fZha/r3DZMXgNHPsu98GXcSFjujEDEEt5DtFFSaAgbG
	02NbvJjo8K8WHOXUukwVvOdYS77sSfjAph8l+HsfwYUpMGomXcoyRA22TtSnEc66K1x
	4iNoyeCxxe07kiy8/ShWj4yn2+r7Jt1nhZ4gBvnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8088c01-f59dcca2-e2d5-4236-a08b-613c7fe37b2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bb371896682afa529bf9134cf08a19fb8f0f173bd2292991d479e7b66622ca2
Date: Mon, 4 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656918412
