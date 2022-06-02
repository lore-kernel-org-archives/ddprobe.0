Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7640C7F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 08:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654160219;
	h=To:Subject:From:Message-Id:Date;
	bh=zFlouvwfofxONX/Zm1K9AdPE4WiD333gMKYZt9yuG+s=;
	b=eYu/weZD2n5+U49V8lT8SLxM2GHVfR9BuxaFdklxvnf24rLDJgbRrllvPL4gUmzT
	ELQyv9m1Nwm/D0VRO/hKx2nXdMcjvs43RUBVRXOV+OXVYROAK4yP5x1QmImG/TOWufr
	moQqYtoEbBXcZucToA8V5XMsPTuzVLAOMOmKL63s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654160219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zFlouvwfofxONX/Zm1K9AdPE4WiD333gMKYZt9yuG+s=;
	b=Mw8q0VYXaXgO3D6D9lQ2FIa+tq+QsaXhAqiFDeeohpGhVSl86lB1shUyBqY6Ebd+
	bRat/fWpZEdYnCz7xBXJhWyN1rjhr3KTQub63DN3K6QpxkO1d8GcNeD8zKA1xC+e/ho
	AhbhEYX0aSCzt4HUW4ZEJw6mHHzAIZWlmdSAgvz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123a1dcc4-069de558-0b9f-4a3b-9078-e757fe4e0480-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 035023b1f50e6e0123a27e73d12025946d09f3dcea3034ca6e5bbbdee1722832
Date: Thu, 2 Jun 2022 08:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654160219
