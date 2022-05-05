Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D433E0
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651779838;
	h=To:Subject:From:Message-Id:Date;
	bh=bBuRy8TrKDJ1XmvrG6t+wY8p4xeoBAa+RHWa4WH/b3U=;
	b=N6lAZxYyyWDHXPpcMQsEoOiDxuZW2mpidXxHDSFOKuSWSvheZTpzuTqxgsYOEP4J
	FjuAYhYqDa1E3hxP3n27tSyDSpllogvRGeGXiuk4L2OmaiZg/VUGK0c4Is9BPQs0m0C
	UCceZTY2ugcraaqimwdOFN00NAykK6VipoL8N1qM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651779838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bBuRy8TrKDJ1XmvrG6t+wY8p4xeoBAa+RHWa4WH/b3U=;
	b=DT7UzAwIq0VFk0byPoE0Bt3fdDY3fTD7ErSIrKxjQmHA6W0yq0KbQ9VzqD4BDxbh
	qi1Fl07TpQsDCUyvu8LvxPBjqA7yfDbwVqWB06+AiUwNrV7WCzw4AHZu9x5YhDHWH5i
	9MsKqKxlm/uOiY2PSlREdJnO9mEi7BQ4Y+8PJqIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095c0212c-ac232ae8-3ab7-4e9f-9dd6-989ac790c8be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16a02314ff6defb52522ecf8de1956d06eca5d151974c02deddba07239bd2e89
Date: Thu, 5 May 2022 19:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651779838
