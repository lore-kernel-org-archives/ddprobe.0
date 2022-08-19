Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649424A14
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660938652;
	h=To:Subject:From:Message-Id:Date;
	bh=3dAo8jb8VyVno2rV6sTLKqvytKiwVRF0Qe23kXTo1iM=;
	b=Rxd9rU0OBokHDsNGN4YtLCAx5/lQZKHQZ8d8k/vzCUw1/wRaTQ46N6jRAshA+yKI
	ju+I9Q8EK6k99S9bqXETBU2icWXCmdtVdD1yN7Zql+zm+VcwXFwhWo0YYAKVC7emPgN
	lcuxN8DpL1EJLEnWOqSrKMERvs3m73aiX+jjrcAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660938652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3dAo8jb8VyVno2rV6sTLKqvytKiwVRF0Qe23kXTo1iM=;
	b=eHxK/j6OHqt77F/yf5PlCjqJ1GKElbNYZRobh3f+XnXUWdvo4ZO4kgzuoWLi6QgV
	8F3yMG/LTl+4irG8VQEpa1k7L3j4pTAamPoR0Zpt2LwvwEf8IBlVC6YR14MEMab0mPo
	H+y0hXfFValtdzkhMXng7TkjeLoTCjis3w10zDlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7a88bad-d1a19ef7-2c7d-4e71-bd48-38395c5e3dee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e31474dfa55ecc3c54d2525f00fbc295a71b1268316dd1c3daf2bfad1cbe2bc
Date: Fri, 19 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660938652
