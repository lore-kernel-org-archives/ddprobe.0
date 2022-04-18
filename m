Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E704F7A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 00:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650240058;
	h=To:Subject:From:Message-Id:Date;
	bh=s1qB72aPd4CaejcGPHHgX4JRU391LUT4D4TwkAS0foA=;
	b=Qak36mQmqD7DJ7/3XRPYysQTKGEkcVLGzUXoDmG4nxQdL8xzCqogEYHKDXvQpxPU
	DUaJUTS4V5fRAyhVS2gIJmoIK4JiBultXyItxegDRvm7mNiuAaKXHw3r6eHWwJnlUNh
	h4+FEA4u4cVY7t69JbyF9cCldNQmOZW0BRX1c1rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650240058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s1qB72aPd4CaejcGPHHgX4JRU391LUT4D4TwkAS0foA=;
	b=Q8cX7h4wgyql7NzFW0AqfAEIGDJSCr+GeMIPjZDmNADQzgFomv+qfgpmk1eA6EcB
	rUlzpiBGSnuR+hngndLlKR6ALf4Vb3F45+XVXsPYwlXBTyxSUNrt5Tmt/IT7/RpUkwO
	JMi0HTCae5QBEQyxo8ZtiYPzWZ95eYjDyQ0OmeRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039f8f3b7-c04587b7-7e9c-4b4e-819c-52e5b11c7035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ba9b6b6a1ed296db2e9e1b42b3b8d563a33d2e852136c55a6e4f7c4efa68e69
Date: Mon, 18 Apr 2022 00:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650240058
