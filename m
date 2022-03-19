Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4D0180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647687685;
	h=To:Subject:From:Message-Id:Date;
	bh=40txK6s4zMn2mSpNcU4xjbbDI4LO5I1boVDk4ksoU1s=;
	b=Z48HXR7wNM1a0tNo2RjZ2Nx2GxKU+kWNJRShZPCywz5V6ZDWYv90ahUuTV8biZ39
	+nc2VZ/3TNHRaknDnOBcb+URP0BGCPCl53FEwuRx7oFCSX4TSVaRFTjJds3YUa0uejD
	B0AHjQx6VhoowxIdapuBe5uIFH+pW9OgLVwTdEo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647687685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=40txK6s4zMn2mSpNcU4xjbbDI4LO5I1boVDk4ksoU1s=;
	b=LjE9RvbFXw/kSt80GIhTW0gv35jkrguq3tg3xrAmEWOJW9NV1kk5+TJIcwijk90S
	LK6OUo/oTF4GGa1F9D83q2XcbX8b+8dWSEHxWFw3R+eEO6yyHKknDV5sD+478TVBgD7
	wxYVY9C5yZah2KN54VLgApIuUnm2rxgA83PIw+kw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1d6d281-57b36e12-434c-43c2-a200-5e23d3677c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f5292e0c3cfec90445f8b7ae04c3dd194fcdbd15079965881e7e61a042c0140
Date: Sat, 19 Mar 2022 11:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647687684
