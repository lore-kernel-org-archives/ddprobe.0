Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8D10E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656658012;
	h=To:Subject:From:Message-Id:Date;
	bh=hXhGOv3arNRYIpI+9KnnNLteZRpqpDQxI7uc7QB3vj8=;
	b=FrEoyKqD2YTDyqjf24C7qR58UZevxi+OcOULtvhBLCf8SIQxDTtW6FsKwLCQARLC
	i/K7O52mexRyrBWLlZ+e288Zae119q+Eb6O/pAU7oguGxejN4niP93wjHAy2J3yU9PZ
	8PsPfJiiZST/1gmYkjBXfCMPxWnyA8hAJ7z2yL6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656658012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hXhGOv3arNRYIpI+9KnnNLteZRpqpDQxI7uc7QB3vj8=;
	b=kOqyANP8FPp/Aux4jsV8Xel2o9y8afSwU+VCQt376gPSuS0k2DjI4Xb/HrNfYBIp
	KHkql4PeukgddrkKc6/Om5oB6+0Fdi41U6RW2EPQCo6DQRdxsInaXeNwVKCjEwbBJOU
	xh1PLXcSTXg3plgTK4TqA/L7TDFVzQYw91FcjSqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b883288a-2762f535-c068-470f-81fd-9dcd24c59e43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ce7b401923418539e1aef9e620dc810e027e00afd92a5c50651bfb8576a9bed
Date: Fri, 1 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656658012
