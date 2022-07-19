Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130C03203
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658243212;
	h=To:Subject:From:Message-Id:Date;
	bh=1yiWt5Wixkbxu5w/1mRiJavgF16l+T2e51vdVhR+5d0=;
	b=NTvayuYQOrGTFVCeW3Yzv0LRGUpCl0oNORV4cWvwJ4x/OOQwEWL7PsZfVBctXXM6
	tUtgTumA4i3zJsfSj4DfFXCmLF5JQJJPQNctCyv9WB/UT8b15zQPot7Cw3rknRgRJUn
	N5oSnC90fR4xrwjl9GJeRfL/qjCyNuXgemB3Ume4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658243212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1yiWt5Wixkbxu5w/1mRiJavgF16l+T2e51vdVhR+5d0=;
	b=MFqKkKv5h0MQB6XL7X+f+z5pjrBrLIMbUlrliOV4FJElNsd3OVO+wisWRGLUP1Rk
	eFpPx3Vv44gur3GDFKUd3zhE5jNZwP8i28qvnSGuTV0fn6GlqkpQS8Tya2POg6GHy5z
	ob4WCZ/TnxesrUjDzc1JYXzzDTmyTiEQ6p9BWjeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216ff6434-90f300c4-6e35-47bb-9895-98b299db2e79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ace5a639e932a9f8bdc7e96bdc9deb0d0c4a8843ae47e1e444bb89edbede8fc
Date: Tue, 19 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658243212
