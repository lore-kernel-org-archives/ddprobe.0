Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6327A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 19:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653937559;
	h=To:Subject:From:Message-Id:Date;
	bh=q0Q60PbqxS/O+x/9Za0fD+3bCqqP4p27nX2xJOCy/6c=;
	b=btMHgrLTh8gnGK3Oy9A7ROSIa+/fsovi+NQ26bn2HEFJqgm9twtx65+Ok6Di0f6w
	bXstsUt2YUxhDqhUmwd9XFrbZGTUqT/aMw6kWkRdRlafVxAQHm9ajC0cUWhavdAAHQg
	YwEC9UfBJPWqLqkMioq6+AgH/KZhBzQU+hkNrOEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653937559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0Q60PbqxS/O+x/9Za0fD+3bCqqP4p27nX2xJOCy/6c=;
	b=ATBhBZ+hyrt4oi9Jlv9FUnXBqHAedx+bm/wB4xXUHX8UKFAK3Af8yR/o5AqrXzw9
	ueikKWhH7F9xftWsEJ1hrpagED3ulRcGXOZoHriHTSqRv2Z5DjVd5ofjCrCP2nnTIgn
	Jt7HV2jRwSPgkkDJxICNo1P6SRB2a0xqomt1jAiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181165c575c-17994345-4e3f-4f5c-a762-a386d9c62139-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41fa2a1a0d6b61641aae94e6315ff9d24d47455e788e77479cea8109ea6d6b71
Date: Mon, 30 May 2022 19:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653937559
