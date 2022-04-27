Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFECB2F49
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 16:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651078798;
	h=To:Subject:From:Message-Id:Date;
	bh=rbl8iT0KTXBQifv26ATTki7lva6jaShnME+lGapTXSg=;
	b=NlEF/c9QAX3g+jwWitjrs6bO9lmjRYd5m55BRnMDRvotlaqf4phdBeCJ5N1FF+gp
	pv8h3UGwuBdollza4eaIa3NvP9bxonESMxNXKFHMK46XfwwXiiR1hlKQipPmfXaUgEr
	M/LmSmsfD94rwhi0x09ppGeX/o5Oz/TSSwjHmXso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651078798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbl8iT0KTXBQifv26ATTki7lva6jaShnME+lGapTXSg=;
	b=ji7nDaT7XJSypQjU7ezJ6BctHOwM6STtAWKjY3b0XPb3fd7uLTlLf6i/DAH74vOG
	xGeKzmgC9tLkRMqmalOWExPEdvc9oqd5b/iDDXxTjqIlvn+NunfalQxvC3HQ5LLzoE/
	rOHxov6Zq/x4N6rXxyUeve61rCkhWlQwFVGfHNj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806bf71bab-a830769f-db92-401b-af7d-b9fa4a00741d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25eb6f5d6b77232f23c5a81606c19ae434ce3223d0de90a5283b8211fa116617
Date: Wed, 27 Apr 2022 16:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651078798
