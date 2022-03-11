Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7E2102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647017784;
	h=To:Subject:From:Message-Id:Date;
	bh=j/dEHpxCCsClReUzVN1r6UpW12tzf9L3sKoP+ryQajs=;
	b=dMVvRSrpctzcwAmLhkxbrnjKkErX0zaUxyKexT5Xwu/LrqMI+h3YC09vQ8DbAtGk
	3SFk3gMt5Io5m/7VTuR2e8UV/cRXqy9EZdNl6/+PfEnLAiqwOSeF12sxnNdhnGnBd77
	7u8YOZye733nWEXjnF4VUWHD356+/Iwdc5LCcd3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647017784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/dEHpxCCsClReUzVN1r6UpW12tzf9L3sKoP+ryQajs=;
	b=RgjKZGO8pRePEf8XIU5b2hxrha7kgckWSEhRTw0gYA6AinhFc6uKUpoBw7eXaKk2
	2XgHWBS8cnL1l8xEEcS/fpmpkRz5z8zI3W7eyXCIVkxrrBbfEuHH+B4pPNsshYbL7Dr
	bbUjH5e55EdZD6dVf0FIsASXOU73fsGoVg6qzP10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79e8f593-5dcd1490-08b6-4860-bf13-5abfdbd96faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 315e370b3adec858d020fb381ef8717565c0b6f351d8e3665cb06792b4409dab
Date: Fri, 11 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647017784
