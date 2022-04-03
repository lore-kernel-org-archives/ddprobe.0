Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107D37C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 20:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649017558;
	h=To:Subject:From:Message-Id:Date;
	bh=XazvqDEYrA+heDqf1ieUbSXPH9A7dQlmUtteafZOvBI=;
	b=J3rVWUJEovlSD8+UigUFFWhgf589bsFZCJ2JUbRxWIxgMzg2x9Rp9ALlRFH9jt/7
	ms4NZVklYh8H3IAAcMUi1JczsNhJzfLNU2a8Mq/jsRcAxQjvTh5QNkKw0QEpzk0rrT4
	Y7no5zDCYTU0RIg8b02JcsxdAFH1tx2L005Gl1vI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649017558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XazvqDEYrA+heDqf1ieUbSXPH9A7dQlmUtteafZOvBI=;
	b=ISnpDwJ16AMS4J+s5QdAw/Rx+r0jCZCJs4IOknnQaZGSFvx3PiiNcWgwq6PbddVW
	fc7VDRjOXzVbKXbSV4gdGa0X7YI0WP7OcgT4uOl51SF8J3hdVRt+F5ByfN7/vq9z5qN
	MuDswG3kH2BOusQm4E5lgD1A+V+UIJBoc2C9hU9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff11b14f5-f9107c70-6ec2-4bfe-9f0d-544d3e8fac74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e68937690694809e744a87eb170cf46b2064c995ebc28dc3479e93096a44198a
Date: Sun, 3 Apr 2022 20:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649017558
