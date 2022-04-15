Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0227A7E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 14:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650032578;
	h=To:Subject:From:Message-Id:Date;
	bh=9PI0wGg5dFPZoH82SthdJXGZR/8OI1Bemo95u7O43Wk=;
	b=YEdbmIxIRiG4nOjyA7xTU6suP+AApFzR1MOWeIZbIwA8TQUSMcBRnhFJhPeefV4e
	FCXE3IBkw0Ib4dxztcsRsrEWC6z/JK0rtPUv/plyb2+448849w+OUsJrHC/O5cpDK4F
	/hsD3cbjEYfqwvod5XDq90Ruurf0Szc76lQvdBcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650032578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9PI0wGg5dFPZoH82SthdJXGZR/8OI1Bemo95u7O43Wk=;
	b=O+laOZKZpd0FLrHH5+IJLx/HK8rO6OP3lFEj3+zcP0DlearIKfkg4z3JQ8nbx2k+
	OXfOlrSrlqq6QWVjHHVHvFTtAhSDqfwrXB/BpP2whySKjgZb9HjAUS3BU1pss7E9osm
	pj6xIDE3dShMZb0hgOc9cpnl+V8VcGVi8OjEMPWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d9b0ed6-3ff2ae52-5fa3-448e-a39e-4f211ceff406-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71d64e0fbc7d8ca2bfb97e5d6d4bb4bf44321dfe53519f7672e86df2999dce81
Date: Fri, 15 Apr 2022 14:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650032578
