Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D08F7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659467452;
	h=To:Subject:From:Message-Id:Date;
	bh=j1YyYejSxmzA+O2Kb6v9+yljrwgxh9arZ2LkorphMzA=;
	b=dFublwyfdwU3Vj6mhpeMOcQhRSrsDEo3Pnxvnn2NzR1sBLe0nW3JauDXJTYa2yCo
	WEXeJ5RLupg+OhdlByF4PAjzARwmoZvFSc4VUtE4oqdC31UjUAQBDEy8FIYnincN/yw
	BgMtKfHP1KIffJ9EpA/MKbqBxdcnjZWdHl+kGRHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659467452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j1YyYejSxmzA+O2Kb6v9+yljrwgxh9arZ2LkorphMzA=;
	b=aa4CruOJIP7P7jx9gSWxfdH8SSC7tSU32ZnSnWMMnfBxNSK6O7hxa9yGYeo+F8r4
	wn1O7Jh3tB/JGad7tdRJbyDez1/AEN0DDcIvkZioznpQ433Oyl09C6hIthd7ekh1kI3
	to2uP35csY1mWDKrnkiUIwdiC+3XlgrXRVqzyDMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ff7d086-a96ec579-9f12-4d13-8c41-43500586883d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76548ce48eaab2a338e677a48a52f1a5e78b967801703a2458a8b9f526473118
Date: Tue, 2 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659467452
