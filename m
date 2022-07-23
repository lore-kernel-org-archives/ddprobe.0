Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C7D7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658617012;
	h=To:Subject:From:Message-Id:Date;
	bh=YdSa7y52cwSFcgn9+Ma3G1x1YXALvbs+/KJdsoBn3LU=;
	b=LJ7PYXsXF5ZU0G+h7wk0rEsMywXQGXuLyvFhJaJl+lxUHjobOY0KqOP169ctwJ3v
	u1dny5/3XjqITFBnJXOGDknWc8zXIt07MRfOkNxDXv7g6Yq0CW/dIzJFUMGWlXvyit8
	ZZ1OiOxIRtYdA07/ctNstwlFCKOTPVVnT6Y4ldfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658617012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdSa7y52cwSFcgn9+Ma3G1x1YXALvbs+/KJdsoBn3LU=;
	b=ZGnYOOrqqnWQc/G74C7Oh+bfwsnnVzwTLQeZjvsvxIQB2O0pQsN7dohiK+ioL4Ww
	fLeNvcpCG+bfV23XNUX85cqOMGuP5+d/ujLHF85MFyfGEd73XZCZnhh2ZPBiK5oOvYi
	oQ/uDe9hP5F2H//0JHQemxz3brkailIfmKIzMnho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d47206f-867ef403-8b1a-48cc-a203-81cb3edbb57e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab67722cdd609756e69b7e84537fcf0043c2725f18f51f86185b3aa809d208f
Date: Sat, 23 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658617012
