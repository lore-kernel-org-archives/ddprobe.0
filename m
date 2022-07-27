Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2A07A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658937053;
	h=To:Subject:From:Message-Id:Date;
	bh=gsGsBiKieRNjzCGg9RTfURdW9fJxrS0HIaG9NpYAHF0=;
	b=BUu8c6BAmNp4fwHc5clD7pjigPvC4h2GmI6tSGp5lyqv4tDMHjaxbJwnDdvT2nln
	R8ELUA41oumZ0c98ZVZruJe7CIIIpj31AXv60dbBciYWu3//gzGtIbfbSv8+HgKBJzO
	zRhby+n9bya7osoFeDfQ9ULDfwOJpnP3VsCYCsQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658937053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsGsBiKieRNjzCGg9RTfURdW9fJxrS0HIaG9NpYAHF0=;
	b=c+APuPns18vReY2vulHw3ECouVoOk3MTrp5nVwW7wxp0/4QIkIns4v7GrosiKNHb
	C5vSu4WPw/Mt7QQkZyQx7i/59/AqsbS3dmiccMkDjLlfI2Q3A5ZlolxDf6fldMRgzxi
	Vbe+oLEITzCIYhMilCO9HLgNmhXKYhVW5Ck9IrKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182405a8e06-791e0d5c-853f-4be3-b301-e844def0bcb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 603ed9694006344d0699e97eba21e74ddde8a5171b4e2004d04b40d9b9398936
Date: Wed, 27 Jul 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658937052
