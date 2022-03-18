Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0953415AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647570385;
	h=To:Subject:From:Message-Id:Date;
	bh=C7AZ8/wpA7iDFL1QuBQRP4bIIT8CUW0MDyRM1Rc4tRs=;
	b=djMIh7KBcpY087I044L/BOYGBVNXIS4Yg4l2qfzYHt91ec/PU+PPu77KiFvLBYQg
	D+gYxSNdKTcroEJTOObTnCn6Ov9l8vONfB5MLYYDmEM5lEDb1rUaydtf3a5GUaQHj48
	F5bu0NTEDQZ4tFtK1Ve8DMtTACL8JyZx1iAkP91g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647570385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7AZ8/wpA7iDFL1QuBQRP4bIIT8CUW0MDyRM1Rc4tRs=;
	b=db5u+XUGwdesQl2uRaDBZ/sgU8uWsJ1agUW10fVxK6lQ94Kf9ESq0tiVnZMUPxzE
	MLtkGeWpeTMNkTdIna0I88KNbhn+grCjEoh5aZIk+InE1P5366NkGsx0lutDP4yTvpI
	D9L2CznLjG9/ytysCHdQc0U5I03pOJ2bIc4S53bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ad8f7e4-c36eaa95-8cc3-405d-b8ba-3397dd4bb520-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 832db320e86ede3f545d92d2fc6bf1cfc53c9cd4701ef79fc1864c0946db8960
Date: Fri, 18 Mar 2022 02:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647570384
