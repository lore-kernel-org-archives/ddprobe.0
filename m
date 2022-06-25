Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EAB7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656172012;
	h=To:Subject:From:Message-Id:Date;
	bh=4GvX3Y/89Nq3o7hWsN42+SJQQD0SOeK3iuz821MxYK0=;
	b=Y8rEA7RCwnEbHEY8Uln+f4cQrBSLvz+twYbrXHrKNQd+wMDgNa3JqiHDtFd1zrBj
	E7qeLhuchGGqJ8vZtSZz5HfjYXexKBcqmtaML/RCgimlhEXc77nJ3UFL1AmbW7nOH46
	eonDxFq+y4naYLjTUlDLxqFhYa23nvPjX0MegdIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656172012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4GvX3Y/89Nq3o7hWsN42+SJQQD0SOeK3iuz821MxYK0=;
	b=jmODtk+pZwHwQYcYjEaFFYKN8E9/54PLJbSxNh7fzxhHGnHby1Mj+GnNVRuxa14Y
	Nl7O3j9HqBYTKkBAYcuHUadzW9cTkpaUk/pAiUvZ2rJoSVxfIZJ7919dvvDCb6b3ig6
	ErnW6sVDmBcmTqjEbHzY5LqyT4o5UFTh8+BTY22g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b8b62e3-290fe037-2571-4c7e-82a1-992ccb4ec4a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c83c587ae4ae688a0f7b897ea40b307bb459d70415d48b24b90f771ffc741af
Date: Sat, 25 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656172012
