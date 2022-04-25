Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226587E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 11:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650886918;
	h=To:Subject:From:Message-Id:Date;
	bh=O9dLhIz36za5hSMjyFqZOcxQiOPtJxAyTlzqoEAAMXI=;
	b=kLTKc1YsOZEd2AWuiRgT6VOGeDdkxUTGjjtWsBEe00Tmt5sFc3KiMpZXg864//Gl
	/vd47o9ebirpRy15tVG1OldIXv1fbtX2GdUpuREIhzgoLlxp22wuN3Rc3pw5eQNBh49
	ujSvaaexH1hALSeWsQnrLt7rSxve8VQnWk+ZcVE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650886918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O9dLhIz36za5hSMjyFqZOcxQiOPtJxAyTlzqoEAAMXI=;
	b=gXs0LziEK+F26ZMrZiL6VXTuMlSFqbu+YJZHyqbYN6vVejYJMGAty+pR/KKSf4Hl
	UT5CY5FAXfrep8Ghy9YWZPq/MlLs5sMiLkkUHykt0tzD3PPJ6P/pEblDgmB/1SPonkT
	kdIuVbW9OlQHMFl4U7zrsIyO4T1q7diu4IZKOiMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060874073-10923e08-e5e0-44ce-a84b-270ff9226811-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d353e1dee1b3676753c20bcbee486425ee00b36d7d80819e22e9aa43b35d14e
Date: Mon, 25 Apr 2022 11:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650886918
