Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C151366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660273252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ix/VC9GGjjgcG78eU260OTMhT+BHi0nYtny4S6ypZdM=;
	b=LFl2VvdWhMCYUYmY7t/CBC6TbhIypWlBy1wPubaQpQ8T9WnY5YN6scAcqttBSuT5
	v///+0ZPcjjronrBqC+TAYNYx6UfxNUIvZw78iAdfqHR8ua7eIi3l8C0kSjmjr4DB0U
	/CPoN9tvoW0upWp6vOoQVGtnP6cTQjW7LOtc1bYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660273252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ix/VC9GGjjgcG78eU260OTMhT+BHi0nYtny4S6ypZdM=;
	b=Rd4lW+DNY0dsb2lCtje3lhfVSe0nIb2GxViObWIJZB39EZfyur8jo3XNyUpJtwy2
	z2FzHSWPmNpdEy9bLuSwJGKjjlSJP2u43XRFUt/CWnifrmaFOeUcjQmrpp+bTw77StJ
	J0FbPVfTTslad7VIMt5I/AHzkU80uYRI+fCBS2xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fff58b1-dbf18158-d36f-4821-8987-504059ae0572-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4379a158cfbbea09e3ff02af1631be7081db42a8030ad149857cf8fe9e6963ff
Date: Fri, 12 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660273252
