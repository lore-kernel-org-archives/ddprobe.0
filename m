Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A4F7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 02:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655174399;
	h=To:Subject:From:Message-Id:Date;
	bh=JUpP+lhjI3TCetX81KKB1SDdmZYBUXU564W9JVM3xBQ=;
	b=E+/PVc4M+QXZw4qxagsfn3Dq5d3k5hNe/apDtHKIa7QPofHe1vhdo/DwXpfquxy+
	e736PUf46FfEKebq3AX96YZEkJQHS14ZfC1UZUz2k03LyoIkjjq28poFoYCE+R8L+u2
	qWbuTJ7W2bQMIB2BpFO9riu2SuN7GxmFRtJ0/ZOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655174399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JUpP+lhjI3TCetX81KKB1SDdmZYBUXU564W9JVM3xBQ=;
	b=IY9byZIMXelIVEpQ6+lyUgGiLL7ONvSaJDLCn52C9gHNTS4UDI/4NhwJK6jiwbyo
	C+wa+6Ppj9OAUxl1bWaGhz7E5j1/UqAEeCu/klR8bEYiwAH8AtkwSMIc9EXAGJ9RjgE
	B9lOCMH3k8rChnxReCxcbQRBy4SApXfWTKi+YwLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160150512-1173f4b0-b583-49a1-bffb-a9c8bdbc6df4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90561cb3cdace696c2a34ef767e15c8a0431dc71f52d2ad9c2d10a957a7181b4
Date: Tue, 14 Jun 2022 02:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655174399
