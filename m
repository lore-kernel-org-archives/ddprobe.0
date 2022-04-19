Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B877A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650371458;
	h=To:Subject:From:Message-Id:Date;
	bh=8L7URKGwcDhVp07Tk2tljZpRvfJYzJGRFCNSMXcJipY=;
	b=L5sZkq7dur0J6BALcSkbjK9yV5egXdjVwnvYV85PHM0Lqbu7HAz1FnNowwliBdki
	J7Ngi0wibaH7ry0FoktYkIeY9wx69zMPxXND7Ooh6zkKMCFmdmuEfUI5QNsS9SIXJ8J
	7utDxBXE4EgycoKufPHdHdbVDv92MfJXIC+86Is4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650371458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8L7URKGwcDhVp07Tk2tljZpRvfJYzJGRFCNSMXcJipY=;
	b=D6YmvvINhjzS89loQ8SS6FIr132HUacaLhbPaS/bOdhspxIpMqZQmg8l9FRyaBH8
	nvA+jfOGqPEj3xG/c4jChCNWGPfTYdJQyrHJMFr9DNTWh6YpRmKhjZFnX10mWNwKwcj
	pXfzXY5hL7I+7SMe0xlsO5z21+AMf4v0FTPnrNC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041cdf4f6-cb5d6b50-0be8-43ad-a948-934ee6776dbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45edf99dc3d15bc973ca44fb7bff535a3bba3306f8bf7b8a438f0e8af3233327
Date: Tue, 19 Apr 2022 12:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650371458
