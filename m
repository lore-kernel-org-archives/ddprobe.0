Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD551866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648041984;
	h=To:Subject:From:Message-Id:Date;
	bh=9sxKJgStUXfHjnhpd48wTTOBZJnkCaeXTHfrvg6SV1Y=;
	b=TQaPBkWCImFNHb9HfYXxYUU6Oy85YcozTLWXGixbo4GjXh1DBaLUhlxu43m7JVez
	mzQbcqPaktxGwbVZ7McLIzppQZNDlNeDtYgYakdveMwv9jeWgb1Y0QCJobu7Vyos9+1
	dgqW5DydPFSYvwOB1U8Fvs058w43gFpPyZmQsOs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648041984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9sxKJgStUXfHjnhpd48wTTOBZJnkCaeXTHfrvg6SV1Y=;
	b=YeZLrWyDf0VLvtVDFPl5zvWTFjf1qjixObVfK1F69FYqmff6cUvKTr05CyT/FiJn
	wIBggaMjTvWzReaLoe1l+2gyxJqjV/O8dTsp09M+0fdhcY1b2FdT9IzPzzc+M4pEH3u
	aLaXXsjXkEZbBFSiT6wXRRw0HdV2EH/FIgEfv0pQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6f502f7-1af7c844-26da-4739-a01c-cb404c2875b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edf98b6b0d4c42272697de8e729b6e2c3d0b794fbaa78448e29c619f01e9166c
Date: Wed, 23 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648041984
