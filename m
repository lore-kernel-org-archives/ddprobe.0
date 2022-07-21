Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C17B6AB3
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658438212;
	h=To:Subject:From:Message-Id:Date;
	bh=HolBfHDjHWo1JIWgFgrOny+Jd+zKpe6/4zo7qQeUvD8=;
	b=NZf8E190xWlgiI6Sy8AbIYQp3F8hgOC5TWk75NIr4GpFBuheWT3WT802nL5rRsiK
	8ovsPuZXg15XmsUU648gPNNQoyas66HTRzI6v+CR58F377QyuxypcQHZPaLw1VNnRYL
	gBNCvqUDkvk0HqRQTg/ZqIGqHlfeUk5CGXjpMh8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658438212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HolBfHDjHWo1JIWgFgrOny+Jd+zKpe6/4zo7qQeUvD8=;
	b=iMroZpmcKYWukZ+dZhVOmPvkXLWInlRd3fq4NHRTGJdsQtHaEXltVvu7jvSvGQKE
	CwVLFQ/kT4Yt1Q35DFbK3cv2hB94IUuGtyMwjhV+mt8M2dmvhj9auDc/JsG9s6MXIcj
	lCSutnWQsW09m52Ex1rw9hUs68jjbxeDIeUzpOcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182229edae5-599f2547-9330-401f-8fc0-0552c37bca6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09a709a922b347dd2ec901818af37dff60334e61c742512810583e213157fb80
Date: Thu, 21 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658438212
