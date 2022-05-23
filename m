Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDEF629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653300659;
	h=To:Subject:From:Message-Id:Date;
	bh=XJFgaCiGoDDdJQlaHtBUKIjjo5iOK2hCONaVEQ1TnJc=;
	b=P16dkdrBKQ6XchMxT28aDOCFYicn5wqKi+Lpj/VxlFmdbebYzce9y08R8HccerVd
	W9muQa/F1B97cj3NKkLNdsxFQmgwERyYn6qoame4GcgmXtmDbHPYXQboLSqNU/r3EuE
	r4udt05tikHn1WUOezq7Y7LwXhNnXAB1f+rIeeOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653300659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XJFgaCiGoDDdJQlaHtBUKIjjo5iOK2hCONaVEQ1TnJc=;
	b=Vhdqptcj271lB+6N9PShODM6PWoXNxcBd97NXbMJFVIJNWmbTZ/Wumais65XTMH3
	A3zomE4VSELf1UVtc3SBi1/TqS0gIbCCLr7Pt0h9evSdmmv24ycwBF5nAyEiO2FPVbR
	Mowg1o6Dum47iM9rIxe0NwQB7aL6caqttPEZ8iYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f06603f3-1aadc2b0-798f-4d7d-b09e-27351634ed26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6761239967e0ce7294f98990ad3804298a053dc09aa0f450f91c0977a39802cc
Date: Mon, 23 May 2022 10:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653300659
