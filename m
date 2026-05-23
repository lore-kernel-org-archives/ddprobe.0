Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDE42472AE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779567754; cv=none; b=FrGax0SY1ahG5nSjNaTRSFqKgS644sdrA2tfqlUOdrQAs6FNAZWLS5rUHlD9AdI05aQHJVrl6LiUkp/aSE2TbtBrn6MStcudWsssv3ifLyz2TGSOk6aW+0lrkdY9jzOlfCZVEvIlFJ3jFyXz93bZAu37W8LWjtsZAAB+5gq9KbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779567754; c=relaxed/simple;
	bh=0PitRktgHZ63ibmyC7BRmRXw2aZS5gpv3ank3fVHcFM=;
	h=To:Subject:From:Message-Id:Date; b=CnfzNNC7vE37cMF79TQpNtGupLBOoxCpm3kl/pjfjoyUIuJvyUzb3YZ8zFVX+uqCDiQ5mCrR0m0hKBQypXE5BXKIbsmETQNtxk/Hy36xDzMsaI/iPnBuN5OVRRMPWLHJeLXyKy4d1kAyK7gbPwG/m4fTlRB+d6y7SZITY5TSa0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIX45afo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIX45afo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9273C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779567753;
	bh=0PitRktgHZ63ibmyC7BRmRXw2aZS5gpv3ank3fVHcFM=;
	h=To:Subject:From:Date:From;
	b=hIX45afoT3Jre3ukwdLG9OxqqofUZ0LcjlLOuOARHg+gHZUu6V+ZufFuYbSE7qvKh
	 0ydSOtNhzgPhD5V0wS4OiE31OcRK90L5NiaNDJyIzEZ9BHOBQm5Qx7Lhzhve/zWO+n
	 VL4usZk3bI4qoZy9XArRXLxzvbYi0/ppE+AaqOcLbcwxIPYxX1tdWQmC2UOvKS0opH
	 pWrMJZZtc9HS9msp6JNbJcjQFh92dnPhyGr+lrsTfFVWkuPi7k/uNpLbmGtQ5XbM1x
	 hUqzzROLeii7Yy5qjAJHNmUto0U/paAbQj12S9hQJkubI1mVraSE0b8nsIQZwUKgXR
	 fDbxvRAX99iOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE8FCD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956775368.22693.6000474714370575396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512c368af45fe22fb76e7395b2d6e401878557261207b17caea20449f30aae14
Date: Sat, 23 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779567753
