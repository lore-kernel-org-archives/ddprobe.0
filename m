Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7F27A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 22:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655159219;
	h=To:Subject:From:Message-Id:Date;
	bh=uWb944sT75lZDmekkgGXMKhgiX+qWsIotQqiResVMLA=;
	b=Tm4bXcV6bGFPVOqfoB47DcyTkUNIVW/jgrt6rXqXw25zxmDcVFPDdC3HiZxCtfEP
	WchNYyZtZ8Z0Sokz6ewxEQL5c95v36cwxOzYMGBZGrrLV/VmrROEjUdZxLICTwArG1e
	CB10eIvQrfGIS5GRaBBcEiTn+eWKGzEdrmUTVS1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655159219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uWb944sT75lZDmekkgGXMKhgiX+qWsIotQqiResVMLA=;
	b=NQkOV6YjjaU9lxyjSdJMlYYO6/SmWI/1qMnSz1Ffa/hvo6WRyego2C3iJD0VpDGE
	v0JqCJ0nRNEu1EHiihIJRghcp0Ax0awuWGAvKeIGTq0RuD27SQBcwpdKHaeo1u3oqc+
	ekIwKLYAAZu1Y90hWxQUcAwRLQ8Po4r6c0FvN4SU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f2d6433-ea84303c-d3e5-4d72-9bb0-a9c691495132-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dc03afb6191091e9eed99c45adc7c0714c62609a62ddf9193f5fb53051b1f34
Date: Mon, 13 Jun 2022 22:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655159219
