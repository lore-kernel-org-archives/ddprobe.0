Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518E9366
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 05:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649397598;
	h=To:Subject:From:Message-Id:Date;
	bh=rVhyC/tYDRtVDXvCNeDseiu8Qi73g30PNW38kDLq7JQ=;
	b=HxUn+7mzTySRWBWIMrF0lf6tFvx/ydtQStHzX2vciKH4NLRQfUbl7BST0f0DCFOv
	Wwhgnen7GV0gMH289GE0JfaB0F9LXikFzu5Oygd1aPbYZuPNSqUk7MPu/5rJ92uaTNW
	QO8lqtF3n2MTafh90GiIzkfqwoEZhX8+iykZ8pIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649397598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVhyC/tYDRtVDXvCNeDseiu8Qi73g30PNW38kDLq7JQ=;
	b=PFidzgq9tBSw8Vg3z3cOk3wXXZXu8mzKfZ9+IjMbcWVsl8WI09trwAS0JxmlQCps
	mGChlNo+uYeB8PrKW2STqdR/+BH6TUunqsG74YMGe1T/2oAHxB3bk7U8z7dRbbB1vWr
	egaShDQz/raiLKHarp0qTPGDs0iAs2QfLDt09Kvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018007c20840-2e6c2f7b-1c32-4712-9b8e-af1ad73ea04b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de7ca9e73a9f55c2910c439f6be52f65ebf464b1818b637f49b4142de337ad2f
Date: Fri, 8 Apr 2022 05:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649397598
