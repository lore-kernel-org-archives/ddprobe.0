Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A2F46AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647399984;
	h=To:Subject:From:Message-Id:Date;
	bh=kd13s4s+rOVm0DZhJTIwjNKxfRixaBP4dsDKLrSc1LI=;
	b=msk/OJAORw6Yee5ZfL2BEsvNnnkdSDOt6SlPb2WCT19DE4huASG6fpZcnDK9Mmae
	/sVBZKcRzAROZrUBfkAGdacoPVubyy3mMjxgjVE1c1bphyTmod+oV4ePdzNF4ltzjLo
	4U4wfbnC4f9s94ZjxofRgV6EsCzIJG6nXhluGK90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647399984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kd13s4s+rOVm0DZhJTIwjNKxfRixaBP4dsDKLrSc1LI=;
	b=FJnJQUjSVKUi3cGk3325N4WQ+76U11ta4jI9ndpvFNRtzPsNdv32w47Ji3lkTWFD
	varXXVRNROj2tkNCukVUhNT6xa0IuQIVuVx3CBAMhIqrC5Ups23tZysnYQ6IrFPYoO0
	qc4KbRF5omvMtX/1SqYEINNcVPR+utyOkIooWQGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90b0de6c-ce1998c4-0080-4e22-96b6-815844e13636-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4b6b8fe5a85f44a4e55aaa91d49a1215a1c9f6b7f79f44da70cf8272f1b631c
Date: Wed, 16 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647399984
