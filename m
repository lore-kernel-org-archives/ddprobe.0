Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6743D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647509484;
	h=To:Subject:From:Message-Id:Date;
	bh=FvwKx6r1Mo/cU7nK/M1e7GPd5gLLR3P5GI3bPQeOof4=;
	b=MIZzQSx86qsUIPCtSqj6ct0Twx3QIRuIen8r7SxPK+Dmva3DXs5KygwIC+so/I/Q
	0Yzpsw7VjfUSuwT9e+UUkzHWGrOhxR3LhMaxbL2R61w1ohG7m7HHYU1sC6Qp7/2LlGi
	HNlaHiOUnB3hxB+PUGsZ0iwhl67KQ3mMt0pg7AQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647509484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FvwKx6r1Mo/cU7nK/M1e7GPd5gLLR3P5GI3bPQeOof4=;
	b=XsPJiZBoWIA4+L9dONFqq8BLXZqu0oLHWuoWJlBj0QVW2/Q45uY+e+FxIIDDdLr2
	AOk09WYRdXp9TPi3/L6Az/LH3SrsSwTNj75/G1mhQFqvblI6yOJc6pvaB0RsC7ggJHk
	M2Z56FwDFDvdSTo39/+cA+7RqAwvP1mtpllbHXSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9737b4ce-597c4b24-218f-474b-b0ba-2067e9562a53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd37a63a76d07d585a7c94b778172a1ad2053c5ffa42216e8ce2e32bd7dc2f53
Date: Thu, 17 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647509484
