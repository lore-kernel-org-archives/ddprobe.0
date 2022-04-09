Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5795622
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 02:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649470798;
	h=To:Subject:From:Message-Id:Date;
	bh=xF0787gUhYaHqlwBLt6YEEAnMM4TkVE3O7in1dFReq0=;
	b=aafSZEYBmW5FdbySYMJ2u3I4FAWeqVYJlZhqxvMEZrI0jP7hwMQQEiuPfVgkM8L3
	IhVgg8iZHFTT8pcvi3AdhD1vfnQ+45XA7QwS70VI6njp0ohV3jhubE/cqz22QGJbBoh
	jb0mPEtwiap1za3Le3NX3JBEb/g8Y0POdjMpuCms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649470798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xF0787gUhYaHqlwBLt6YEEAnMM4TkVE3O7in1dFReq0=;
	b=ZzFKgfPQDzkbBRVOSidD8oMdM0AMpwqkrsUK4ZQBse2/TZlgqotFZlBmsGXALAK/
	zOdbbA1gKQxfnVNQscvReejtW/6gDikztGK2yaMFc9eDPhVVwLvVGKbBf0UT8wP3FH0
	0D7rz80b/2/fFQW3NO9Sx5GoLS3w8ezhvAK089MM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800c1ef9bf-850ee18d-2b6a-4c73-aa0f-27001be0ba23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd460d17d9d8ee83349be006348a74668e2cb1038c8d8ca5948dcf500207f206
Date: Sat, 9 Apr 2022 02:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649470798
