Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132551FA1
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 05:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649740198;
	h=To:Subject:From:Message-Id:Date;
	bh=9BuaekGhhfrU6bin6CAtlQMQCshvHYzGH+27njjqc30=;
	b=CFfq2wRH6PRqhfGCEVPhO6+uKIz/rmv5TZzivdEfStlzMaEdXp8aNZvT4DyOCCrP
	xSyZsnTRQM0qdPgGTXoWisFdgQTSt+deDFewmSIN9lVF4ECds4CUZthBaciT/Ohuz/i
	CncDnzubpRoSIVWqufwGvWFxRBjQ3+JqGEgF+SXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649740198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9BuaekGhhfrU6bin6CAtlQMQCshvHYzGH+27njjqc30=;
	b=iieLAV+N4GK93m/VcYbOeRPqUTIy1cZWD5BBoCqIknS37lzZIJ2wF6+JTwSWb4KM
	dCly3FBHCPUEi72DX57v4lh2oAiL6j9DZXYTOfx9ju5VSfS8DDFnrfMCsEuSYFAWP/x
	lcWOOB0JQ+FXTpSpc5cLXI9Gd8JpWAEW666/VhEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801c2db199-86784a42-d99d-4d80-a567-c64c03dd4aee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ce5bc308cbd53a2c362b3b5136cc3cad1fbe6dfd940b2bb440d98c97c07785
Date: Tue, 12 Apr 2022 05:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649740198
