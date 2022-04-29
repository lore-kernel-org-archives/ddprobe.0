Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3791365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 09:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651225138;
	h=To:Subject:From:Message-Id:Date;
	bh=m3Rn7+F5ZBoqHGFpPOxR3k4qNB1BSqNKCZzmhv4Y9N8=;
	b=HdNyz6s+paeSwB8tb1K2VXtEV9jR9OX4Ch9KbGOTta4I9rwb9BngOLyZGutLORCM
	M4GaZeZhrfhVMXVfxsTM8A7iFF3wRVcxcSby1rXvw7+XZdOzbnNAdtsdZgjT/+t5+yN
	Z3YsiOxJUca7as5WxFNPyE5yQsJDg5v0tKlPMzrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651225138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3Rn7+F5ZBoqHGFpPOxR3k4qNB1BSqNKCZzmhv4Y9N8=;
	b=VBI5APxkMIvHh4EJOUM4PKHgglPrdDV/JmVe2rnKD6shB46D5C9sDsjGU2v5UxAk
	Tnkw8U0CUj/LR73EfBUaUYIgeogknqMGnoEWuQ0awEvHcLR/D0sndj3QGityfDSh/7A
	flrR5279UnxlBLuFUy+lpxogIHN5DK/3sJZC2tz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074b01495-10f4a102-9386-421e-9ef6-6744d52fcf18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98e5e7c73a4868d1c556917acae2b4dd9cd02e23420335a1098c3cc516fbbb35
Date: Fri, 29 Apr 2022 09:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651225138
