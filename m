Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30764A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 20:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657742812;
	h=To:Subject:From:Message-Id:Date;
	bh=dKjTgSt8KTFmw/YS51tVqwE/oo0ZMaxRHaDM4pZ+hBw=;
	b=lGH7BSaayMrtww8iI4iNg9rKhGjMx3GauDJQKZR1mbqS/arqnHN+oVXvImv3hu0A
	ghn8E702j8oM3/IohDSyUy04idC8P0nKvXvuQKbNjPquwey1d0u9CGMZdlBUrtkyJmD
	QmB0mVvcCDROiwNlYTTTqgXzD7hq3GOY8c36gsnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657742812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKjTgSt8KTFmw/YS51tVqwE/oo0ZMaxRHaDM4pZ+hBw=;
	b=Jo6AdW2Q9xVHQRQuR+8xZMnjvwR5/4saVNeN5IR+1BxrDO6mHFcz7lPgnOCyidC+
	+StSE2LqfqWRQcwlBPchfA8OzDHMutXqyJ3ccwqC5bdGa/yTKDjNDL7L1j/Hjz+lgjc
	eVso9DdZY30nEVL/5Bjln0FChZbigyUlqf9DHvI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f92be471-bfb83476-5347-4440-8cec-d8f5c563a6b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ae00ace9aaa35fe5ec14864456ec941f75e4cd38bb821c7d7457a64768ec964
Date: Wed, 13 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657742812
